.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$6;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateNormalAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$6;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 330
    const/4 p1, 0x1

    return p1
.end method
