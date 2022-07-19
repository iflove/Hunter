.class final Lcom/uc/webview/export/internal/setup/u;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 112
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1115
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->o:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 1116
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->o:Landroid/webkit/ValueCallback;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1118
    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 1120
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 1123
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->c(Landroid/content/Context;)V

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "delete_core"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1128
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p1, Lcom/uc/webview/export/internal/setup/av;

    if-eqz v1, :cond_a

    .line 1129
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0x3f0

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    .line 1130
    :cond_3
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0x3f3

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    .line 1131
    :cond_4
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xbbf

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    .line 1132
    :cond_5
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    .line 1133
    :cond_6
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xfa5

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_8

    .line 1134
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 1135
    :cond_8
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1136
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/util/List;)Ljava/util/List;

    .line 1138
    :cond_9
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;)Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/uc/webview/export/internal/setup/av;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mExceptionCB mExceptionTasks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->c()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkSetupTask"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->c()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1144
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->c()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 1145
    if-eqz p1, :cond_b

    .line 1146
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->c()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_0

    .line 1148
    :cond_b
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    const-string v0, "init exception, fallback to system webview"

    invoke-static {v1, v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1149
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    new-instance v0, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 1151
    goto :goto_0

    .line 1152
    :cond_c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->c(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1153
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/o;->c(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    .line 1154
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->e(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    .line 1155
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->d(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const-string v1, "exception"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1156
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 1157
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/o;->f(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;

    goto :goto_0

    .line 1159
    :cond_d
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/o;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 1163
    :goto_0
    const/16 p1, 0xc4

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    .line 1164
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_e
    const-string v0, ""

    .line 1163
    :goto_1
    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 112
    return-void
.end method
