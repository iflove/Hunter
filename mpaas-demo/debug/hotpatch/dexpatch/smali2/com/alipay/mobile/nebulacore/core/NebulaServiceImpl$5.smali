.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$5;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b(Landroid/os/Bundle;)Z
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

    .line 778
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$5;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .line 782
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$5;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Ljava/lang/String;)V

    .line 783
    return-void
.end method
