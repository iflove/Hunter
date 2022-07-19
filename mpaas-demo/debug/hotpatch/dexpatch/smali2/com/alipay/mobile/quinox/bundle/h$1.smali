.class final Lcom/alipay/mobile/quinox/bundle/h$1;
.super Ljava/lang/Object;
.source "ExtractFailedPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/quinox/LauncherApplication;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/quinox/bundle/h;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/h;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/bundle/h;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->d:Lcom/alipay/mobile/quinox/bundle/h;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput p4, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/quinox/bundle/h$1;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method
