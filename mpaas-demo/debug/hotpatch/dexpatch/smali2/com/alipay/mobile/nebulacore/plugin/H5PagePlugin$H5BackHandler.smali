.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5BackHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field public lastBack:J

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .line 693
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    .line 696
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 701
    const-string v1, "prevent"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 702
    .local v0, "prevent":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "back event prevent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PagePlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    if-eqz v0, :cond_0

    .line 704
    return-void

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    .line 707
    return-void
.end method
