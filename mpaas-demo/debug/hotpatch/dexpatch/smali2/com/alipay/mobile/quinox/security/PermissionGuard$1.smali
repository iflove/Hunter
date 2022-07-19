.class final Lcom/alipay/mobile/quinox/security/PermissionGuard$1;
.super Ljava/lang/Object;
.source "PermissionGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/security/PermissionGuard;->abolishExecutableAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/quinox/security/PermissionGuard$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/quinox/security/PermissionGuard$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->abolishExecutableSync(Landroid/content/Context;)Z

    .line 81
    return-void
.end method
