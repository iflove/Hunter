.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;
.super Ljava/lang/Object;
.source "PerformanceViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;->a:Ljava/lang/Runnable;

    .line 141
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 146
    :try_start_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    .local v0, "exception":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "exception":Ljava/lang/Throwable;
    return-void
.end method
