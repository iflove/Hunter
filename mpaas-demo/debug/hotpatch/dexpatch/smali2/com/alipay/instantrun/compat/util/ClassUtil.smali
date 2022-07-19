.class public Lcom/alipay/instantrun/compat/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# static fields
.field private static final ARRAY_SUFFIX:Ljava/lang/String; = "[]"

.field private static final TAG:Ljava/lang/String; = "IR.ClassUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "rawType"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/alipay/instantrun/compat/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 25
    .local v2, "rawClazz":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/alipay/instantrun/compat/util/ClassUtil;->isArray(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/instantrun/compat/util/ClassUtil;->getArrayClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, "targetClazz":Ljava/lang/Class;
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "java.lang.String"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "java.lang.Double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "java.lang.Void"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "java.lang.Long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "java.lang.Byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "java.lang.Boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "java.lang.Character"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "short"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "void"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_b
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_c
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_d
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_e
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "java.lang.Short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_10
    const-string v1, "java.lang.Float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_11
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_12
    const-string v1, "java.lang.Integer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 95
    :pswitch_0
    const-class v0, Ljava/lang/Void;

    .line 96
    goto :goto_3

    .line 92
    :pswitch_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 93
    goto :goto_3

    .line 89
    :pswitch_2
    const-class v0, Ljava/lang/String;

    .line 90
    goto :goto_3

    .line 86
    :pswitch_3
    const-class v0, Ljava/lang/Boolean;

    .line 87
    goto :goto_3

    .line 83
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 84
    goto :goto_3

    .line 80
    :pswitch_5
    const-class v0, Ljava/lang/Character;

    .line 81
    goto :goto_3

    .line 77
    :pswitch_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 78
    goto :goto_3

    .line 74
    :pswitch_7
    const-class v0, Ljava/lang/Double;

    .line 75
    goto :goto_3

    .line 71
    :pswitch_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 72
    goto :goto_3

    .line 68
    :pswitch_9
    const-class v0, Ljava/lang/Float;

    .line 69
    goto :goto_3

    .line 65
    :pswitch_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    goto :goto_3

    .line 62
    :pswitch_b
    const-class v0, Ljava/lang/Long;

    .line 63
    goto :goto_3

    .line 59
    :pswitch_c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 60
    goto :goto_3

    .line 56
    :pswitch_d
    const-class v0, Ljava/lang/Integer;

    .line 57
    goto :goto_3

    .line 53
    :pswitch_e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    goto :goto_3

    .line 50
    :pswitch_f
    const-class v0, Ljava/lang/Short;

    .line 51
    goto :goto_3

    .line 47
    :pswitch_10
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 48
    goto :goto_3

    .line 44
    :pswitch_11
    const-class v0, Ljava/lang/Byte;

    .line 45
    goto :goto_3

    .line 41
    :pswitch_12
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 42
    goto :goto_3

    .line 99
    :goto_2
    move-object v0, v1

    .line 102
    goto :goto_3

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "IR.ClassUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_12
        -0x4f08842f -> :sswitch_11
        -0x1f76ce78 -> :sswitch_10
        -0x1ec16c58 -> :sswitch_f
        0x197ef -> :sswitch_e
        0x2e6108 -> :sswitch_d
        0x2e9356 -> :sswitch_c
        0x32c67c -> :sswitch_b
        0x375194 -> :sswitch_a
        0x3db6c28 -> :sswitch_9
        0x5d0225c -> :sswitch_8
        0x685847c -> :sswitch_7
        0x9415455 -> :sswitch_6
        0x148d6054 -> :sswitch_5
        0x17c0bc5c -> :sswitch_4
        0x17c521d0 -> :sswitch_3
        0x17c9ace8 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isArray(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
