.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .line 52
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 53
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 55
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 56
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 58
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 59
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 60
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 62
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-class v2, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 64
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 65
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 67
    if-eqz p5, :cond_2

    .line 68
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 69
    .local v2, "modifiers":I
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1

    :cond_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 70
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 71
    .end local v2    # "modifiers":I
    goto :goto_1

    .line 72
    :cond_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 73
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 75
    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 77
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 78
    .local v2, "hashCode":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 80
    .local v5, "c":C
    int-to-long v6, v5

    xor-long/2addr v2, v6

    .line 81
    const-wide v6, 0x100000001b3L

    mul-long v2, v2, v6

    .line 78
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    .end local v4    # "i":I
    :cond_3
    iput-wide v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 85
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .line 98
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v6, 0x0

    iput v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 99
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 100
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 101
    iput-object v3, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 102
    move/from16 v7, p6

    iput v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 103
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 104
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 105
    move/from16 v10, p7

    iput v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v11

    .line 108
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v12, 0x0

    .line 109
    .local v12, "format":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 110
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v12

    .line 112
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    .line 113
    const/4 v12, 0x0

    .line 116
    :cond_0
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    new-array v13, v6, [Ljava/lang/String;

    iput-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 120
    :goto_0
    iput-object v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 122
    if-eqz v3, :cond_5

    .line 123
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 124
    .local v14, "modifiers":I
    if-eqz v2, :cond_3

    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    if-ne v15, v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 125
    and-int/lit16 v13, v14, 0x80

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iput-boolean v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 126
    .end local v14    # "modifiers":I
    goto :goto_4

    .line 127
    :cond_5
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 128
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 131
    :goto_4
    const-wide v13, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 132
    .local v13, "hashCode":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v15, v6, :cond_6

    .line 133
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 134
    .local v6, "c":C
    int-to-long v7, v6

    xor-long/2addr v7, v13

    .line 135
    .end local v13    # "hashCode":J
    .local v7, "hashCode":J
    const-wide v13, 0x100000001b3L

    mul-long v13, v13, v7

    .line 132
    .end local v6    # "c":C
    .end local v7    # "hashCode":J
    .restart local v13    # "hashCode":J
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p6

    move-object/from16 v8, p8

    const/4 v6, 0x0

    goto :goto_5

    .line 137
    .end local v15    # "i":I
    :cond_6
    iput-wide v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 141
    if-eqz v2, :cond_d

    .line 142
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 143
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 144
    const/4 v7, 0x0

    aget-object v8, v6, v7

    .line 145
    .local v8, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Class;

    if-eq v8, v7, :cond_9

    const-class v7, Ljava/lang/String;

    if-eq v8, v7, :cond_9

    .line 147
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_7

    .line 150
    :cond_7
    if-eqz p10, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v15, 0x0

    aget-object v7, v7, v15

    goto :goto_6

    :cond_8
    move-object v7, v8

    .local v7, "fieldType":Ljava/lang/reflect/Type;
    :goto_6
    goto :goto_8

    .line 148
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_9
    :goto_7
    move-object v7, v8

    .line 152
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_8
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const/4 v15, 0x1

    goto :goto_a

    .line 154
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 155
    .restart local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Class;

    if-ne v8, v7, :cond_b

    .line 156
    move-object v7, v8

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_9

    .line 158
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_b
    if-eqz p10, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    goto :goto_9

    :cond_c
    move-object v7, v8

    .line 160
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 162
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    iput-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 163
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_e

    .line 164
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 165
    .restart local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_10

    const-class v6, Ljava/lang/String;

    if-eq v8, v6, :cond_10

    .line 167
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_c

    .line 170
    :cond_e
    if-eqz p10, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    goto :goto_b

    :cond_f
    move-object v6, v8

    :goto_b
    move-object v7, v6

    .local v6, "fieldType":Ljava/lang/reflect/Type;
    goto :goto_d

    .line 168
    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    :cond_10
    :goto_c
    move-object v6, v8

    move-object v7, v6

    .line 173
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 174
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 177
    :goto_e
    if-eqz v4, :cond_17

    const-class v6, Ljava/lang/Object;

    if-ne v8, v6, :cond_17

    instance-of v6, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_17

    .line 181
    move-object v6, v7

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 182
    .local v6, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v15, 0x0

    .line 184
    .local v15, "genericFieldType":Ljava/lang/reflect/Type;
    const/16 v16, 0x0

    .line 185
    .local v16, "arguments":[Ljava/lang/reflect/Type;
    instance-of v1, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_11

    .line 186
    move-object v1, v5

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 187
    .local v1, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 190
    .end local v1    # "ptype":Ljava/lang/reflect/ParameterizedType;
    :cond_11
    move-object/from16 v1, p4

    move-object/from16 v2, v16

    .end local v16    # "arguments":[Ljava/lang/reflect/Type;
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "arguments":[Ljava/lang/reflect/Type;
    :goto_f
    if-eqz v1, :cond_13

    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_13

    iget-object v3, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eq v1, v3, :cond_13

    .line 191
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 193
    .local v3, "superType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_12

    .line 194
    move-object v9, v3

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 195
    .local v9, "p_superType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v16, v3

    .end local v3    # "superType":Ljava/lang/reflect/Type;
    .local v16, "superType":Ljava/lang/reflect/Type;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 196
    .local v3, "p_superType_args":[Ljava/lang/reflect/Type;
    move-object/from16 v17, v9

    .end local v9    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .local v17, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    invoke-static {v3, v9, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 197
    move-object v2, v3

    goto :goto_10

    .line 193
    .end local v16    # "superType":Ljava/lang/reflect/Type;
    .end local v17    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .local v3, "superType":Ljava/lang/reflect/Type;
    :cond_12
    move-object/from16 v16, v3

    .line 190
    .end local v3    # "superType":Ljava/lang/reflect/Type;
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v3, p3

    move-object/from16 v9, p9

    goto :goto_f

    .line 201
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    if-eqz v2, :cond_15

    .line 202
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 203
    .local v1, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    array-length v9, v1

    if-ge v3, v9, :cond_15

    .line 204
    aget-object v9, v1, v3

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 205
    aget-object v15, v2, v3

    .line 206
    goto :goto_12

    .line 203
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 212
    .end local v1    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v2    # "arguments":[Ljava/lang/reflect/Type;
    .end local v3    # "j":I
    :cond_15
    :goto_12
    if-eqz v15, :cond_17

    .line 213
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 214
    iput-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 216
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_16

    const-class v1, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_13

    :cond_16
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 217
    return-void

    .line 221
    .end local v6    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v15    # "genericFieldType":Ljava/lang/reflect/Type;
    :cond_17
    move-object v1, v7

    .line 223
    .local v1, "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v2, v7, Ljava/lang/Class;

    if-nez v2, :cond_1a

    .line 224
    if-eqz v5, :cond_18

    move-object v2, v5

    goto :goto_14

    :cond_18
    move-object v2, v4

    :goto_14
    invoke-static {v4, v2, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 225
    if-eq v1, v7, :cond_1a

    .line 226
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_19

    .line 227
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_15

    .line 228
    :cond_19
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1a

    .line 229
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 234
    :cond_1a
    :goto_15
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 235
    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 237
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 238
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-class v2, Lcom/alibaba/fastjson/JSONAware;

    .line 239
    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v6, 0x1

    goto :goto_16

    :cond_1b
    const/4 v6, 0x0

    :goto_16
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 240
    return-void
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 243
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 247
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 248
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 249
    .local v0, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 250
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 251
    .local v2, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v1, v2, :cond_1

    .line 252
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 253
    .local v3, "fieldTypeX":Ljava/lang/reflect/Type;
    return-object v3

    .line 256
    .end local v3    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_1
    return-object p2

    .line 259
    .end local v0    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .end local v2    # "componentTypeX":Ljava/lang/reflect/Type;
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    return-object p2

    .line 263
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 264
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 265
    .local v0, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 266
    .local v1, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 268
    .local v2, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object p2, v4, v3

    .line 271
    return-object p2

    .line 268
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "i":I
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 277
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 279
    .local v0, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 280
    .local v1, "arguments":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 281
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 282
    .local v3, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v4, 0x0

    .line 284
    .local v4, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 285
    .local v5, "paramType":Ljava/lang/reflect/ParameterizedType;
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_6

    .line 286
    move-object v5, p1

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    goto :goto_1

    .line 288
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_7

    .line 289
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 290
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 293
    :cond_7
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_b

    if-eqz v5, :cond_b

    .line 294
    aget-object v7, v1, v6

    .line 295
    .local v7, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_a

    .line 296
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/TypeVariable;

    .line 298
    .local v8, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v3

    if-ge v9, v10, :cond_a

    .line 299
    aget-object v10, v3, v9

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 300
    if-nez v4, :cond_8

    .line 301
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 303
    :cond_8
    aget-object v10, v4, v9

    aput-object v10, v1, v6

    .line 304
    const/4 v2, 0x1

    .line 298
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 293
    .end local v7    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v8    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v9    # "j":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 309
    .end local v6    # "i":I
    :cond_b
    if-eqz v2, :cond_c

    .line 310
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 311
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object p2, v6

    .line 312
    return-object p2

    .line 316
    .end local v0    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "arguments":[Ljava/lang/reflect/Type;
    .end local v2    # "changed":Z
    .end local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v5    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :cond_c
    return-object p2

    .line 244
    :cond_d
    :goto_4
    return-object p2
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 324
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    .line 325
    const/4 v0, -0x1

    return v0

    .line 328
    :cond_0
    if-le v0, v1, :cond_1

    .line 329
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 336
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 337
    return v0

    .line 339
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 344
    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 361
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
