.class Lcom/android/server/am/OpForceDarkController$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field FB:Z

.field final GB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field HB:Ljava/lang/String;

.field WB:I

.field XB:I

.field YB:I

.field enable:I

.field final synthetic this$0:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, FB:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, GB:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, enable:I

    iput p1, p0, WB:I

    iput p1, p0, XB:I

    iput p1, p0, YB:I

    const-string p1, ""

    iput-object p1, p0, HB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method Ec()Lcom/android/server/am/OpForceDarkController$you;
    .locals 3

    new-instance v0, Lcom/android/server/am/OpForceDarkController$you;

    iget-object v1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {v0, v1}, <init>(Lcom/android/server/am/OpForceDarkController;)V

    iget-boolean v1, p0, FB:Z

    iput-boolean v1, v0, FB:Z

    iget v1, p0, enable:I

    iput v1, v0, enable:I

    iget v1, p0, WB:I

    iput v1, v0, WB:I

    iget v1, p0, XB:I

    iput v1, v0, XB:I

    iget v1, p0, YB:I

    iput v1, v0, YB:I

    iget-object v1, v0, GB:Ljava/util/List;

    iget-object v2, p0, GB:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, HB:Ljava/lang/String;

    iput-object p0, v0, HB:Ljava/lang/String;

    return-object v0
.end method

.method debugToString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget v3, p0, enable:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget v3, p0, WB:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget v3, p0, XB:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget v3, p0, YB:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, GB:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "{enable = %s | swDark = %s | swEnhance = %s | jsInject = %s | compatVers = %s}"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method sis(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "fallback"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, FB:Z

    const-string v1, "enable"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, enable:I

    const-string v1, "swDark"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, WB:I

    const-string v1, "swEnhance"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, XB:I

    const-string v1, "jsInject"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, YB:I

    const-string v1, "compatVers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, GB:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "specialActions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, HB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method zta(Lcom/android/server/am/OpForceDarkController$you;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p1, FB:Z

    iget-boolean v1, p0, FB:Z

    if-ne v0, v1, :cond_1

    iget v0, p1, enable:I

    iget v1, p0, enable:I

    if-ne v0, v1, :cond_1

    iget v0, p1, WB:I

    iget v1, p0, WB:I

    if-ne v0, v1, :cond_1

    iget v0, p1, XB:I

    iget v1, p0, XB:I

    if-ne v0, v1, :cond_1

    iget v0, p1, YB:I

    iget v1, p0, YB:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, GB:Ljava/util/List;

    iget-object v1, p1, GB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, HB:Ljava/lang/String;

    iget-object p1, p1, HB:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
