using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DL
{
    public interface ICommonDL
    {
        List<PlantModel> GetPlantName();
        List<PlantMachineModel> GetPlantMachine(int id);
        List<ProductDetailsModel> GetProductDetails();
    }
}
