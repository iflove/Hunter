.class Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;
.super Ljava/lang/Object;
.source "H5LoadingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/view/H5LoadingView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Lcom/alipay/mobile/nebula/view/H5LoadingView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->a:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    const-string v0, "H5LoadingPlugin"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->a:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    .line 184
    const-string v1, "showLoadingView "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->a:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->setText(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->a:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/RuntimeException;
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    .line 189
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method
