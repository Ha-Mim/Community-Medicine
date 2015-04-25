using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class ViewManager
    {
        ViewStoryDBGateway aViewHistoryDbGateway = new ViewStoryDBGateway();
        public List<ViewStrory> ShowStory(string name)
        {
            return aViewHistoryDbGateway.ViewStory(name);
        } 
    }
}
