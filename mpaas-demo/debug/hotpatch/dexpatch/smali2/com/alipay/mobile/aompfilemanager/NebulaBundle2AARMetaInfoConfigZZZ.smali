.class public Lcom/alipay/mobile/aompfilemanager/NebulaBundle2AARMetaInfoConfigZZZ;
.super Ljava/lang/Object;
.source "NebulaBundle2AARMetaInfoConfigZZZ.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nebulaMetaInfo()Ljava/lang/String;
    .locals 1

    .line 3
    const-string/jumbo v0, "{\'nebula-metainfo\':{\'plugininfo\':[{\'lazyInit\':\'false\',\'scope\':\'page\',\'bundleName\':\'android-phone-wallet-aompfilemanager\',\'className\':\'com.alipay.mobile.aompfilemanager.h5plugin.H5FilePlugin\',\'events\':\'saveFile|downloadFile|getSavedFileList|getSavedFileInfo|removeSavedFile|h5PageClose|getFileInfo|operateDownloadTask\'},{\'lazyInit\':\'false\',\'scope\':\'service\',\'bundleName\':\'android-phone-wallet-aompfilemanager\',\'className\':\'com.alipay.mobile.aompfilemanager.h5plugin.H5FSManagePlugin\',\'events\':\'fsManage\'},{\'lazyInit\':\'false\',\'scope\':\'service\',\'bundleName\':\'android-phone-wallet-aompfilemanager\',\'className\':\'com.alipay.mobile.aompfilemanager.h5plugin.H5OfficeViewerPlugin\',\'events\':\'openDocument\'},{\'lazyInit\':\'false\',\'scope\':\'page\',\'bundleName\':\'android-phone-wallet-aompfilemanager\',\'className\':\'com.alipay.mobile.aompfilemanager.h5plugin.H5UploadPlugin\',\'events\':\'upload|uploadFile|operateUploadTask\'},{\'lazyInit\':\'false\',\'scope\':\'page\',\'bundleName\':\'android-phone-wallet-aompfilemanager\',\'className\':\'com.alipay.mobile.aompfilemanager.h5plugin.TinyAppStoragePlugin\',\'events\':\'setTinyLocalStorage|getTinyLocalStorage|removeTinyLocalStorage|clearTinyLocalStorage|getTinyLocalStorageInfo|sendTinyLocalStorageToIDE\'}]}}"

    return-object v0
.end method
