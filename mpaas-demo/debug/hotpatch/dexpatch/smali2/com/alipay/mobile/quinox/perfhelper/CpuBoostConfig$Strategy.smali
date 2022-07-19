.class public interface abstract annotation Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig$Strategy;
.super Ljava/lang/Object;
.source "CpuBoostConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Strategy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DISABLED:I = 0x0

.field public static final ROM_CONFIG_ONLY:I = 0x2

.field public static final SERVER_CONFIG_ONLY:I = 0x1
