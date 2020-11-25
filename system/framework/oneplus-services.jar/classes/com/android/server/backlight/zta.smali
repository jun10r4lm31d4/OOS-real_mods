.class public Lcom/android/server/backlight/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backlight/zta$zta;
    }
.end annotation


# static fields
.field public static final AE:I = 0x0

.field public static final DE:I = 0x1

.field public static final EE:I = 0x2

.field public static final GE:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_VIDEO:I = 0x2

.field public static final xE:I = 0x1

.field public static final yE:I = 0x3

.field public static final zE:Ljava/lang/String; = "default"


# instance fields
.field private mPkgName:Ljava/lang/String;

.field private mStatus:I

.field private mType:I

.field private vE:I

.field private wE:I

.field private zd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mStatus:I

    iput v0, p0, vE:I

    iput v0, p0, wE:I

    const-string v1, ""

    iput-object v1, p0, mPkgName:Ljava/lang/String;

    iput v0, p0, mType:I

    const-string v0, "default"

    iput-object v0, p0, zd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mStatus:I

    iput v0, p0, vE:I

    iput v0, p0, wE:I

    iput-object p1, p0, mPkgName:Ljava/lang/String;

    iput p2, p0, mType:I

    iput-object p3, p0, zd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dd()I
    .locals 0

    iget p0, p0, vE:I

    return p0
.end method

.method public ed()I
    .locals 0

    iget p0, p0, mStatus:I

    return p0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, zd:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRate()I
    .locals 0

    iget p0, p0, wE:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, mType:I

    return p0
.end method

.method public kb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppBacklightConfig:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, zd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, vE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, wE:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(I)I
    .locals 0

    iput p1, p0, vE:I

    return p1
.end method

.method public updateStatus(I)V
    .locals 0

    iput p1, p0, mStatus:I

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, wE:I

    return-void
.end method

.method public you(ZI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, vE:I

    add-int/2addr p1, v1

    iput p1, p0, vE:I

    iget p1, p0, vE:I

    if-lt p1, p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, vE:I

    const/4 p1, 0x2

    iput p1, p0, mStatus:I

    return v0

    :cond_0
    iget p1, p0, vE:I

    sub-int/2addr p1, v1

    iput p1, p0, vE:I

    iget p1, p0, vE:I

    if-gez p1, :cond_1

    iput v0, p0, vE:I

    iput v0, p0, mStatus:I

    return v0

    :cond_1
    return v1
.end method
