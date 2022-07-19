.class Lcom/uc/webview/export/cyclone/UCLogger$1;
.super Landroid/os/AsyncTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/webview/export/cyclone/UCLogger;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/cyclone/UCLogger;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger$1;->this$0:Lcom/uc/webview/export/cyclone/UCLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 140
    # getter for: Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$000()Landroid/webkit/ValueCallback;

    move-result-object p1

    .line 142
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 143
    :try_start_0
    # getter for: Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_4

    .line 164
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 145
    :cond_0
    const/4 v1, 0x1

    .line 146
    :goto_0
    if-eqz v1, :cond_3

    .line 147
    # getter for: Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :goto_1
    if-eqz v2, :cond_1

    .line 148
    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 147
    # getter for: Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    check-cast v2, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 152
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    goto :goto_3

    .line 154
    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 157
    :goto_3
    # getter for: Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 158
    if-nez v2, :cond_2

    .line 159
    # setter for: Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    const/4 v1, 0x0

    .line 162
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    :goto_4
    # setter for: Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 166
    nop

    .line 167
    return-object v0
.end method
