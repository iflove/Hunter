.class Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord$1;
.super Ljava/lang/Object;
.source "LinkRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;->shouldReport()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/log/mainlink/LinkRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shared_prefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/io/File;

    const-string v2, "MainLinkRecorder.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 227
    :cond_0
    return-void
.end method
