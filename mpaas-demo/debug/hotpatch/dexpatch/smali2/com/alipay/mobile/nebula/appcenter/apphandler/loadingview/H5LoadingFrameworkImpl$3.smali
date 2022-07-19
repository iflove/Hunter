.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$3;
.super Ljava/lang/Object;
.source "H5LoadingFrameworkImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$3;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 185
    if-eqz p1, :cond_0

    .line 186
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$3$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$3$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$3;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 193
    :cond_0
    return-void
.end method
