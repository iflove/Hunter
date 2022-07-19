.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformancePanelPermissionChecker;
.super Ljava/lang/Object;
.source "PerformancePanelPermissionChecker.java"

# interfaces
.implements Ltest/tinyapp/alipay/com/testlibrary/core/PermissionChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 16
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->debugAllowed(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    return v0
.end method
