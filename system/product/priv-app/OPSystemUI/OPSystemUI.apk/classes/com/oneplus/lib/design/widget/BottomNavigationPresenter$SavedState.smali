.class Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field notificationState:Landroid/os/Bundle;

.field selectedItemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, selectedItemId:I

    const-class v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, notificationState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, selectedItemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, notificationState:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
