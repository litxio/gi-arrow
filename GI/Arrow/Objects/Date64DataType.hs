{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Date64DataType
    ( 

-- * Exported types
    Date64DataType(..)                      ,
    IsDate64DataType                        ,
    toDate64DataType                        ,
    noDate64DataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDate64DataTypeMethod             ,
#endif


-- ** new #method:new#

    date64DataTypeNew                       ,




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
newtype Date64DataType = Date64DataType (ManagedPtr Date64DataType)
    deriving (Eq)
foreign import ccall "garrow_date64_data_type_get_type"
    c_garrow_date64_data_type_get_type :: IO GType

instance GObject Date64DataType where
    gobjectType = c_garrow_date64_data_type_get_type
    

-- | Convert 'Date64DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Date64DataType where
    toGValue o = do
        gtype <- c_garrow_date64_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Date64DataType)
        B.ManagedPtr.newObject Date64DataType ptr
        
    

-- | Type class for types which can be safely cast to `Date64DataType`, for instance with `toDate64DataType`.
class (GObject o, O.IsDescendantOf Date64DataType o) => IsDate64DataType o
instance (GObject o, O.IsDescendantOf Date64DataType o) => IsDate64DataType o

instance O.HasParentTypes Date64DataType
type instance O.ParentTypes Date64DataType = '[Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `Date64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDate64DataType :: (MonadIO m, IsDate64DataType o) => o -> m Date64DataType
toDate64DataType = liftIO . unsafeCastTo Date64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Date64DataType`.
noDate64DataType :: Maybe Date64DataType
noDate64DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDate64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDate64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDate64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDate64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDate64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDate64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDate64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDate64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDate64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDate64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDate64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDate64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDate64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDate64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDate64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDate64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDate64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDate64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDate64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDate64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDate64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDate64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDate64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDate64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDate64DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDate64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDate64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDate64DataTypeMethod t Date64DataType, O.MethodInfo info Date64DataType p) => OL.IsLabel t (Date64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Date64DataType
type instance O.AttributeList Date64DataType = Date64DataTypeAttributeList
type Date64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Date64DataType = Date64DataTypeSignalList
type Date64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Date64DataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "Date64DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date64_data_type_new" garrow_date64_data_type_new :: 
    IO (Ptr Date64DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
date64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Date64DataType
    -- ^ __Returns:__ A newly created the number of milliseconds
    --   since UNIX epoch in 64-bit signed integer data type.
date64DataTypeNew  = liftIO $ do
    result <- garrow_date64_data_type_new
    checkUnexpectedReturnNULL "date64DataTypeNew" result
    result' <- (wrapObject Date64DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


