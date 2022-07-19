.class public Lcom/uc/webview/export/cyclone/UCKnownException;
.super Ljava/lang/RuntimeException;
.source "U4Source"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    const p2, -0x1869f

    iput p2, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 22
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const p2, -0x1869f

    iput p2, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 12
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    const p1, -0x1869f

    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    const v0, -0x1869f

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    instance-of v0, p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    iget p1, p1, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 32
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public static create(Ljava/lang/Throwable;I)Lcom/uc/webview/export/cyclone/UCKnownException;
    .locals 1

    .line 43
    instance-of v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v0, p1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final errCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    return v0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .locals 2

    .line 71
    move-object v0, p0

    .line 72
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public final toRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 62
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException$1;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/cyclone/UCKnownException$1;-><init>(Lcom/uc/webview/export/cyclone/UCKnownException;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
