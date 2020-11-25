.class public abstract Lcom/oneplus/support/core/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/support/core/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/core/view/AbsSavedState$1;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/AbsSavedState$1;-><init>()V

    sput-object v0, EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;

    new-instance v0, Lcom/oneplus/support/core/view/AbsSavedState$2;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/AbsSavedState$2;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;

    :goto_0
    iput-object p1, p0, mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, mSuperState:Landroid/os/Parcelable;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "superState must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/core/view/AbsSavedState$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, mSuperState:Landroid/os/Parcelable;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
