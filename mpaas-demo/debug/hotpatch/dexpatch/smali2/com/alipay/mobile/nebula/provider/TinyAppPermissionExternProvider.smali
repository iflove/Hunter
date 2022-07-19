.class public abstract Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;
.super Ljava/lang/Object;
.source "TinyAppPermissionExternProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;,
        Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionCheckCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loadPermissionCheckConfig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldHandlePermissionDialog()Z
.end method

.method public abstract showPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionCheckCallback;)V
.end method
