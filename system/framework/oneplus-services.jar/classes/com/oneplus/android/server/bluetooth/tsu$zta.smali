.class Lcom/oneplus/android/server/bluetooth/tsu$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field public Cla:I

.field public Dla:I

.field public Ela:I

.field public Fla:I

.field public address:Ljava/lang/String;

.field public err:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/android/server/bluetooth/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/tsu;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, address:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, err:I

    iput-object p1, p0, name:Ljava/lang/String;

    iput v0, p0, Cla:I

    iput v0, p0, Dla:I

    iput v0, p0, Ela:I

    iput v0, p0, Fla:I

    return-void
.end method
