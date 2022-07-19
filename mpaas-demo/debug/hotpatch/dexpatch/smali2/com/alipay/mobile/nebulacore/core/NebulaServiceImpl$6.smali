.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$6;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 1052
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    .line 1056
    return-void
.end method
