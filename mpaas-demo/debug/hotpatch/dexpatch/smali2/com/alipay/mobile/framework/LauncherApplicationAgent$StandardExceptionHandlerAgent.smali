.class public abstract Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent.java"

# interfaces
.implements Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/LauncherApplicationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StandardExceptionHandlerAgent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "defaultHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 183
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    const/4 v0, 0x0

    return v0
.end method
