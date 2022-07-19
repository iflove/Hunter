.class public interface abstract Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;
.super Ljava/lang/Object;
.source "NXExecutorService.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/Proxiable;


# static fields
.field public static final IDLE:Ljava/lang/String; = "IDLE"

.field public static final IO:Ljava/lang/String; = "IO"

.field public static final NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final RPC:Ljava/lang/String; = "RPC"

.field public static final URGENT:Ljava/lang/String; = "URGENT"

.field public static final URGENT_DISPLAY:Ljava/lang/String; = "URGENT_DISPLAY"


# virtual methods
.method public abstract getExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;
.end method

.method public abstract getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end method
