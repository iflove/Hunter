.class final Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$2;
.super Ljava/lang/Object;
.source "ExternalFileAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$2;->a:Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$2;->a:Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e()V

    .line 220
    return-void
.end method
