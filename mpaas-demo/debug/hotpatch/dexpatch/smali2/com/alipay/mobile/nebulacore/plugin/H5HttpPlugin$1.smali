.class Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;
.super Ljava/lang/Object;
.source "H5HttpPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V

    .line 136
    return-void
.end method
