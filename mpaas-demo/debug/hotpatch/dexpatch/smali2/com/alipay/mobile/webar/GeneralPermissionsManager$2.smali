.class final Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;
.super Ljava/lang/Object;
.source "GeneralPermissionsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/webar/GeneralPermissionsManager;->showGeneralPermissionsPrompt(Landroid/content/Context;Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;

.field final synthetic d:Lcom/alipay/mobile/webar/GeneralPermissionsManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/webar/GeneralPermissionsManager;Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;Ljava/lang/String;Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->d:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    iput-object p2, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->a:Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;

    iput-object p3, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->c:Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->a:Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;

    invoke-virtual {v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->a()Z

    move-result v0

    const-string v1, "GeneralPermissionsManager"

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    .line 162
    .local v2, "time":J
    iget-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->d:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    # getter for: Lcom/alipay/mobile/webar/GeneralPermissionsManager;->mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;
    invoke-static {v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->access$000(Lcom/alipay/mobile/webar/GeneralPermissionsManager;)Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->b:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->CAMERA_PERMISSION:Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->a(Ljava/lang/String;Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;J)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->c:Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;

    invoke-interface {v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onAllow()V

    .line 164
    const-string v0, "general permissions allow"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v2    # "time":J
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;->c:Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;

    invoke-interface {v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onDeny()V

    .line 167
    const-string v0, "general permissions deny"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
