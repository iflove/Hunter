.class public Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;
.super Ljava/lang/Object;
.source "StepDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static mTempCount:I


# instance fields
.field private final context:Landroid/content/Context;

.field private mLastDiff:F

.field private mLastDirections:F

.field private final mLastExtremes:[F

.field private mLastMatch:I

.field private mLastTime:J

.field private mLastValues:F

.field private final mLimit:F

.field private final mPreValues:[F

.field private mSampleCount:I

.field private final mSampleSize:I

.field private mScale:F

.field private mStepCount:I

.field private final mThreshold:F

.field private final mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLimit:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    .line 17
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    .line 20
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    .line 21
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    .line 22
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    .line 24
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    .line 25
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 26
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    .line 27
    const/4 v1, 0x5

    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleSize:I

    .line 28
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    .line 29
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mThreshold:F

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    .line 36
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 38
    .local v1, "windowHeight":I
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mYOffset:F

    .line 39
    int-to-float v2, v1

    mul-float v2, v2, v3

    const v3, 0x3c888889

    mul-float v2, v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    .line 40
    sput v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 46
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 21

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 52
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 54
    iget v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ge v2, v5, :cond_1

    .line 55
    nop

    :goto_0
    if-ge v7, v6, :cond_0

    .line 56
    iget-object v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aget v5, v2, v7

    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v7

    div-float/2addr v8, v4

    add-float/2addr v5, v8

    aput v5, v2, v7

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget v1, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    return-void

    .line 59
    :cond_1
    if-ne v2, v5, :cond_d

    .line 61
    nop

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 63
    iget v8, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mYOffset:F

    iget-object v9, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aget v9, v9, v2

    iget v10, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    .line 64
    add-float/2addr v5, v8

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v5, v2

    .line 67
    iget v8, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    cmpl-float v9, v5, v8

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    cmpg-float v9, v5, v8

    if-gez v9, :cond_4

    const/4 v9, -0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    int-to-float v9, v9

    .line 69
    iget v10, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    neg-float v10, v10

    cmpl-float v10, v9, v10

    if-nez v10, :cond_c

    .line 70
    cmpl-float v10, v9, v1

    if-lez v10, :cond_5

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    .line 71
    :goto_3
    iget-object v11, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    aput v8, v11, v10

    .line 72
    aget v8, v11, v10

    rsub-int/lit8 v12, v10, 0x1

    aget v11, v11, v12

    sub-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 73
    iget-object v11, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aget v13, v11, v7

    aget v14, v11, v7

    mul-float v13, v13, v14

    aget v14, v11, v3

    aget v15, v11, v3

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    const/4 v14, 0x2

    aget v15, v11, v14

    aget v11, v11, v14

    mul-float v15, v15, v11

    add-float/2addr v13, v15

    const v11, 0x42c0573d

    div-float/2addr v13, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v13, v11

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 79
    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v4, v8, v4

    if-lez v4, :cond_b

    iget-wide v6, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    sub-long v16, v14, v6

    const-wide/16 v18, 0x12c

    cmp-long v20, v16, v18

    if-lez v20, :cond_b

    .line 80
    iget v4, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    div-float v16, v4, v11

    cmpl-float v16, v8, v16

    if-lez v16, :cond_6

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    .line 81
    :goto_4
    div-float v2, v8, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    .line 82
    :goto_5
    iget v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    if-ne v2, v12, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 84
    :goto_6
    if-eqz v16, :cond_b

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 86
    sub-long v6, v14, v6

    cmp-long v2, v6, v18

    if-lez v2, :cond_b

    const/high16 v2, -0x41800000    # -0.25f

    cmpg-float v2, v13, v2

    if-ltz v2, :cond_9

    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v13, v2

    if-lez v2, :cond_b

    .line 88
    :cond_9
    iget v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 89
    sget v4, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    add-int/2addr v4, v3

    sput v4, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    .line 90
    iput v10, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    .line 91
    iput-wide v14, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    .line 92
    const/16 v3, 0xa

    if-gt v4, v3, :cond_a

    .line 93
    const/4 v2, 0x0

    iput v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    goto :goto_7

    .line 96
    :cond_a
    rem-int/lit16 v2, v2, 0xc8

    if-nez v2, :cond_b

    .line 97
    iget-object v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_stepsCount"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 99
    const-wide/16 v6, 0x0

    const-string/jumbo v3, "stepsCount"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 102
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v10, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    int-to-long v12, v10

    add-long/2addr v6, v12

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const/4 v2, 0x0

    iput v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 111
    :cond_b
    :goto_7
    mul-float v8, v8, v11

    iget v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    add-float/2addr v8, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v8, v2

    iput v8, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    .line 113
    :cond_c
    iput v9, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    .line 114
    iput v5, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    .line 115
    const/4 v2, 0x0

    iput v2, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    .line 116
    const/4 v7, 0x0

    :goto_8
    const/4 v2, 0x3

    if-ge v7, v2, :cond_d

    .line 117
    iget-object v3, v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aput v1, v3, v7

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 121
    :cond_d
    return-void
.end method
