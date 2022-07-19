.class Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;
.super Ljava/lang/Object;
.source "H5NewJSAPIPermissionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:[Z

.field final synthetic c:Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;Lcom/alipay/mobile/h5container/api/H5Event;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;

    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->c:Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 186
    const-string v0, "H5NewJSAPIPermissionPlugin"

    const-string v1, "rpc synctimeout loadUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->c:Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;->b:[Z

    const-string v3, "timer"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;Lcom/alipay/mobile/h5container/api/H5Event;[ZLjava/lang/String;)V

    .line 188
    return-void
.end method
