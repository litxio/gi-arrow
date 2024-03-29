{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.StringDataType
    ( 

-- * Exported types
    StringDataType(..)                      ,
    IsStringDataType                        ,
    toStringDataType                        ,
    noStringDataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStringDataTypeMethod             ,
#endif


-- ** new #method:new#

    stringDataTypeNew                       ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StringDataType = StringDataType (ManagedPtr StringDataType)
    deriving (Eq)
foreign import ccall "garrow_string_data_type_get_type"
    c_garrow_string_data_type_get_type :: IO GType

instance GObject StringDataType where
    gobjectType = c_garrow_string_data_type_get_type
    

-- | Convert 'StringDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StringDataType where
    toGValue o = do
        gtype <- c_garrow_string_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StringDataType)
        B.ManagedPtr.newObject StringDataType ptr
        
    

-- | Type class for types which can be safely cast to `StringDataType`, for instance with `toStringDataType`.
class (GObject o, O.IsDescendantOf StringDataType o) => IsStringDataType o
instance (GObject o, O.IsDescendantOf StringDataType o) => IsStringDataType o

instance O.HasParentTypes StringDataType
type instance O.ParentTypes StringDataType = '[Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `StringDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStringDataType :: (MonadIO m, IsStringDataType o) => o -> m StringDataType
toStringDataType = liftIO . unsafeCastTo StringDataType

-- | A convenience alias for `Nothing` :: `Maybe` `StringDataType`.
noStringDataType :: Maybe StringDataType
noStringDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStringDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveStringDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStringDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStringDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveStringDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStringDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStringDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStringDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStringDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStringDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStringDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStringDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStringDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStringDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStringDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStringDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStringDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveStringDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStringDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStringDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStringDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveStringDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStringDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStringDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStringDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStringDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStringDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStringDataTypeMethod t StringDataType, O.MethodInfo info StringDataType p) => OL.IsLabel t (StringDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StringDataType
type instance O.AttributeList StringDataType = StringDataTypeAttributeList
type StringDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StringDataType = StringDataTypeSignalList
type StringDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StringDataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "StringDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_data_type_new" garrow_string_data_type_new :: 
    IO (Ptr StringDataType)

-- | /No description available in the introspection data./
stringDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StringDataType
    -- ^ __Returns:__ The newly created UTF-8 encoded string data type.
stringDataTypeNew  = liftIO $ do
    result <- garrow_string_data_type_new
    checkUnexpectedReturnNULL "stringDataTypeNew" result
    result' <- (wrapObject StringDataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


