.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    return-void
.end method
