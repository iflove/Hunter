.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullBehavorLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 293
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public autoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 327
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 328
    return-void
.end method

.method public autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 332
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 333
    return-void
.end method

.method public autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 322
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 323
    return-void
.end method

.method public click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 297
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 298
    return-void
.end method

.method public customContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 342
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 343
    return-void
.end method

.method public event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavorID"    # Ljava/lang/String;
    .param p2, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 337
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 338
    return-void
.end method

.method public longClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 307
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 308
    return-void
.end method

.method public openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 302
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 303
    return-void
.end method

.method public slide(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 317
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 318
    return-void
.end method

.method public submit(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 312
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 313
    return-void
.end method
