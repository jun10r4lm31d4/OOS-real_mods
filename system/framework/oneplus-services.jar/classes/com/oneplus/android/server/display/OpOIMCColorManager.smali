.class public Lcom/oneplus/android/server/display/OpOIMCColorManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;
    }
.end annotation


# static fields
.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final Lpa:I = 0x0

.field private static final Mpa:I = 0x1

.field private static final Npa:I = 0x2

.field private static final Opa:I = 0x3

.field private static final Ppa:I = 0x4

.field private static final Qpa:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpOIMCColorManager"


# instance fields
.field public Apa:Ljava/lang/String;

.field public Bpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

.field public Cpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

.field public Dpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

.field public Epa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

.field public Fpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

.field private Gpa:Z

.field private Hpa:Z

.field private Ipa:Z

.field private Jpa:Z

.field public Kpa:I

.field private mContext:Landroid/content/Context;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    iput-object v0, p0, Apa:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Gpa:Z

    iput-boolean v0, p0, Hpa:Z

    iput-boolean v0, p0, Ipa:Z

    iput-boolean v0, p0, Jpa:Z

    iput v0, p0, Kpa:I

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Cpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Bpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Epa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Dpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Fpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Ipa:Z

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Ipa:Z

    return p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Jpa:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Jpa:Z

    return p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Hpa:Z

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Hpa:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Gpa:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Gpa:Z

    return p1
.end method
