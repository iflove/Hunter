.class Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;
.super Ljava/lang/Object;
.source "H5TabBarPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->g(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

.field final synthetic f:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

.field final synthetic g:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

.field final synthetic h:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    .line 504
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->h:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->d:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->e:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->f:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->g:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->h:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->d:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->e:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->f:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;->g:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V

    .line 509
    return-void
.end method
