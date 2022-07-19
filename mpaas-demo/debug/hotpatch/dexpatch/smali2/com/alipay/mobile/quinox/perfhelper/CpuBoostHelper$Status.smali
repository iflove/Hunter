.class interface abstract annotation Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$Status;
.super Ljava/lang/Object;
.source "CpuBoostHelper.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BOOST_CALLED:I = 0x67

.field public static final INITED:I = 0x4

.field public static final INITING:I = 0x3

.field public static final INIT_CALLED:I = 0x2

.field public static final NOT_INIT:I = 0x1

.field public static final NO_BOOSTER:I = 0x66

.field public static final NO_CONFIG:I = 0x65

.field public static final STOPPED:I = 0x68
