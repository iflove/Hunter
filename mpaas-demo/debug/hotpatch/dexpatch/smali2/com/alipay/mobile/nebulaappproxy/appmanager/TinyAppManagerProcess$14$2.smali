.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    .line 1767
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iput-wide p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1770
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->d:Lcom/alipay/mobile/antui/basic/AULoadingView;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->d:Lcom/alipay/mobile/antui/basic/AULoadingView;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-wide v3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;->a:D

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AULoadingView;->setCurrentProgress(I)V

    .line 1773
    :cond_0
    return-void
.end method
