.class Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;
.super Ljava/lang/Object;
.source "H5LoadingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->showLoading(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    const-string v0, "H5LoadingPlugin"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    .line 127
    const-string v1, "showLoadingDialog "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    .line 132
    const-string v2, "exception detail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method
