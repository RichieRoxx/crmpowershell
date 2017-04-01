﻿/*
CRM PowerShell Library
Copyright (C) 2017 Arjan Meskers / AMSoftware

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
using System;
using System.Linq;
using System.Management.Automation;
using AMSoftware.Crm.PowerShell.Common;
using AMSoftware.Crm.PowerShell.Common.Repositories;
using Microsoft.Xrm.Sdk;
using Microsoft.Xrm.Sdk.Query;

namespace AMSoftware.Crm.PowerShell.Commands.Administration
{
    [Cmdlet(VerbsCommon.Get, "Team", HelpUri = HelpUrlConstants.GetTeamHelpUrl, SupportsPaging = true, DefaultParameterSetName = GetAllTeamsParameterSet)]
    [OutputType(typeof(Entity))]
    public class GetTeamCommand : CrmOrganizationCmdlet
    {
        private const string GetAllTeamsParameterSet = "GetAllTeams";
        private const string GetTeamByIdParameterSet = "GetTeamById";

        private ContentRepository _repository = new ContentRepository();

        [Parameter(Mandatory = true, Position = 0, ParameterSetName = GetTeamByIdParameterSet)]
        [ValidateNotNull]
        public Guid Id { get; set; }

        [Parameter(ParameterSetName = GetAllTeamsParameterSet)]
        [ValidateNotNull]
        public CrmTeamType? TeamType { get; set; }

        [Parameter(ParameterSetName = GetAllTeamsParameterSet)]
        [ValidateNotNull]
        public Guid? Administrator { get; set; }

        [Parameter(ParameterSetName = GetAllTeamsParameterSet)]
        [ValidateNotNullOrEmpty]
        [SupportsWildcards]
        public string Include { get; set; }

        [Parameter(ParameterSetName = GetAllTeamsParameterSet)]
        [ValidateNotNullOrEmpty]
        [SupportsWildcards]
        public string Exclude { get; set; }

        [Parameter(ParameterSetName = GetAllTeamsParameterSet)]
        [ValidateNotNullOrEmpty]
        public Guid? BusinessUnit { get; set; }

        protected override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();

            switch (this.ParameterSetName)
            {
                case GetAllTeamsParameterSet:
                    GetFilteredContent();
                    break;
                case GetTeamByIdParameterSet:
                    WriteObject(_repository.Get("team", Id));
                    break;
                default:
                    break;
            }
        }

        private void GetFilteredContent()
        {
            QueryExpression advancedFilterQuery = BuildTeamByFilterQuery();
            
            if (PagingParameters.IncludeTotalCount)
            {
                double accuracy;
                int count = _repository.GetRowCount(advancedFilterQuery, out accuracy);
                WriteObject(PagingParameters.NewTotalCount(Convert.ToUInt64(count), accuracy));
            }

            var result = _repository.Get(advancedFilterQuery, PagingParameters.First, PagingParameters.Skip);
            if (!string.IsNullOrWhiteSpace(Include))
            {
                WildcardPattern includePattern = new WildcardPattern(Include, WildcardOptions.IgnoreCase);
                result = result.Where(a => includePattern.IsMatch(a.GetAttributeValue<string>("name")));
            }
            if (!string.IsNullOrWhiteSpace(Exclude))
            {
                WildcardPattern excludePattern = new WildcardPattern(Exclude, WildcardOptions.IgnoreCase);
                result = result.Where(a => !(excludePattern.IsMatch(a.GetAttributeValue<string>("name"))));
            }

            WriteObject(result, true);
        }

        private QueryExpression BuildTeamByFilterQuery()
        {
            QueryExpression query = new QueryExpression("team")
            {
                ColumnSet = new ColumnSet(true)
            };

            if (TeamType.HasValue)
            {
                query.Criteria.AddCondition("teamtype", ConditionOperator.Equal, (int)TeamType);
            }

            if (Administrator.HasValue)
            {
                query.Criteria.AddCondition("administratorid", ConditionOperator.Equal, Administrator);
            }

            if (BusinessUnit.HasValue && BusinessUnit.Value != Guid.Empty)
            {
                query.Criteria.AddCondition("businessunitid", ConditionOperator.Equal, BusinessUnit.Value);
            }

            return query;
        }
    }
}