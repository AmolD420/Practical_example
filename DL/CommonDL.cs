using DataAcessLayer;
using DataModel;
using ExceptionHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DL
{
    public class CommonDL : ICommonDL
    {
        private readonly DBHelper _dbHelper;
        public CommonDL()
        {
            this._dbHelper = new DBHelper();
        }

        public List<PlantMachineModel> GetPlantMachine(int id)
        {
            try
            {
                this._dbHelper.Clear();
                this._dbHelper.AddParameter("ID", id, DataType.AsInt);
                return this._dbHelper.GetDataTableToList<PlantMachineModel>("getPlantMachine");
            }
            catch (Exception ex)
            {
                throw new DLException(ex);
            }
        }

        public List<PlantModel> GetPlantName()
        {
            try
            {
                this._dbHelper.Clear();
                return this._dbHelper.GetDataTableToList<PlantModel>("getPlantName");
            }
            catch (Exception ex)
            {
                throw new DLException(ex);
            }
        }

        public List<ProductDetailsModel> GetProductDetails()
        {
            try
            {
                this._dbHelper.Clear();
                return this._dbHelper.GetDataTableToList<ProductDetailsModel>("getMasterProducts");
            }
            catch (Exception ex)
            {
                throw new DLException(ex);
            }
        }
    }
}
