.class final Lcom/alipay/mobile/quinox/utils/STLLibUtil$1;
.super Ljava/lang/Object;
.source "STLLibUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadStlInMainProcessAsync(Landroid/content/Context;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
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

    .line 202
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/STLLibUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/STLLibUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSTLSosInQuinoxProcess(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    const-string v0, "STLLibUtil"

    const-string v1, "pre load so failed."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
