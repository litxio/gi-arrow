{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.BooleanDataType
    ( 

-- * Exported types
    BooleanDataType(..)                     ,
    IsBooleanDataType                       ,
    toBooleanDataType                       ,
    noBooleanDataType                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveBooleanDataTypeMethod            ,
#endif


-- ** new #method:new#

    booleanDataTypeNew                      ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BooleanDataType = BooleanDataType (ManagedPtr BooleanDataType)
    deriving (Eq)
foreign import ccall "garrow_boolean_data_type_get_type"
    c_garrow_boolean_data_type_get_type :: IO GType

instance GObject BooleanDataType where
    gobjectType = c_garrow_boolean_data_type_get_type
    

-- | Convert 'BooleanDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue BooleanDataType where
    toGValue o = do
        gtype <- c_garrow_boolean_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr BooleanDataType)
        B.ManagedPtr.newObject BooleanDataType ptr
        
    

-- | Type class for types which can be safely cast to `BooleanDataType`, for instance with `toBooleanDataType`.
class (GObject o, O.IsDescendantOf BooleanDataType o) => IsBooleanDataType o
instance (GObject o, O.IsDescendantOf BooleanDataType o) => IsBooleanDataType o

instance O.HasParentTypes BooleanDataType
type instance O.ParentTypes BooleanDataType = '[Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `BooleanDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBooleanDataType :: (MonadIO m, IsBooleanDataType o) => o -> m BooleanDataType
toBooleanDataType = liftIO . unsafeCastTo BooleanDataType

-- | A convenience alias for `Nothing` :: `Maybe` `BooleanDataType`.
noBooleanDataType :: Maybe BooleanDataType
noBooleanDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveBooleanDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveBooleanDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBooleanDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBooleanDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveBooleanDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBooleanDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBooleanDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBooleanDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBooleanDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBooleanDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBooleanDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBooleanDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBooleanDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBooleanDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBooleanDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBooleanDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBooleanDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveBooleanDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBooleanDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBooleanDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveBooleanDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBooleanDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveBooleanDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBooleanDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBooleanDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBooleanDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBooleanDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBooleanDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBooleanDataTypeMethod t BooleanDataType, O.MethodInfo info BooleanDataType p) => OL.IsLabel t (BooleanDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList BooleanDataType
type instance O.AttributeList BooleanDataType = BooleanDataTypeAttributeList
type BooleanDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList BooleanDataType = BooleanDataTypeSignalList
type BooleanDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BooleanDataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "BooleanDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_boolean_data_type_new" garrow_boolean_data_type_new :: 
    IO (Ptr BooleanDataType)

-- | /No description available in the introspection data./
booleanDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m BooleanDataType
    -- ^ __Returns:__ The newly created boolean data type.
booleanDataTypeNew  = liftIO $ do
    result <- garrow_boolean_data_type_new
    checkUnexpectedReturnNULL "booleanDataTypeNew" result
    result' <- (wrapObject BooleanDataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


