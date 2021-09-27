using DataModel;
using DL;
using ExceptionHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class CommonBL : ICommonBL
    {
        private readonly CommonDL _commonDL;
        public CommonBL()
        {
            this._commonDL = new CommonDL();
        }

        public List<PlantMachineModel> GetPlantMachine(int id)
        {
            try
            {
                return this._commonDL.GetPlantMachine(id);
            }
            catch (Exception ex)
            {
                throw BLException.GetBLException(ex);
            }
        }

        public List<PlantModel> GetPlantName()
        {
            try
            {
                return this._commonDL.GetPlantName();
            }
            catch (Exception ex)
            {
                throw BLException.GetBLException(ex);
            }
        }

        public List<ProductDetailsModel> GetProductDetails()
        {
            try
            {
                return this._commonDL.GetProductDetails();
            }
            catch (Exception ex)
            {
                throw BLException.GetBLException(ex);
            }
        }
    }
}
