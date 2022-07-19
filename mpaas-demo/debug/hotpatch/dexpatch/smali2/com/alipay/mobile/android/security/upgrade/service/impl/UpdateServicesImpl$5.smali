.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$5;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$5;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 448
    const/4 p1, 0x1

    return p1
.end method
