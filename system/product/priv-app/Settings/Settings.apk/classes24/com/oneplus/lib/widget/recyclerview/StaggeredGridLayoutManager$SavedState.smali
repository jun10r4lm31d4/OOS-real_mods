.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
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
            "Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorPosition:I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field mLastLayoutRTL:Z

.field mReverseLayout:Z

.field mSpanLookup:[I

.field mSpanLookupSize:I

.field mSpanOffsets:[I

.field mSpanOffsetsSize:I

.field mVisibleAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mVisibleAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSpanOffsetsSize:I

    iget v0, p0, mSpanOffsetsSize:I

    if-lez v0, :cond_0

    new-array v0, v0, [I

    iput-object v0, p0, mSpanOffsets:[I

    iget-object v0, p0, mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSpanLookupSize:I

    iget v0, p0, mSpanLookupSize:I

    if-lez v0, :cond_1

    new-array v0, v0, [I

    iput-object v0, p0, mSpanLookup:[I

    iget-object v0, p0, mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, mReverseLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, mAnchorLayoutFromEnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, mLastLayoutRTL:Z

    const-class v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mFullSpanItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, mSpanOffsetsSize:I

    iput v0, p0, mSpanOffsetsSize:I

    iget v0, p1, mAnchorPosition:I

    iput v0, p0, mAnchorPosition:I

    iget v0, p1, mVisibleAnchorPosition:I

    iput v0, p0, mVisibleAnchorPosition:I

    iget-object v0, p1, mSpanOffsets:[I

    iput-object v0, p0, mSpanOffsets:[I

    iget v0, p1, mSpanLookupSize:I

    iput v0, p0, mSpanLookupSize:I

    iget-object v0, p1, mSpanLookup:[I

    iput-object v0, p0, mSpanLookup:[I

    iget-boolean v0, p1, mReverseLayout:Z

    iput-boolean v0, p0, mReverseLayout:Z

    iget-boolean v0, p1, mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, mAnchorLayoutFromEnd:Z

    iget-boolean v0, p1, mLastLayoutRTL:Z

    iput-boolean v0, p0, mLastLayoutRTL:Z

    iget-object v0, p1, mFullSpanItems:Ljava/util/List;

    iput-object v0, p0, mFullSpanItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method invalidateAnchorPositionInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, mSpanOffsets:[I

    const/4 v0, 0x0

    iput v0, p0, mSpanOffsetsSize:I

    const/4 v0, -0x1

    iput v0, p0, mAnchorPosition:I

    iput v0, p0, mVisibleAnchorPosition:I

    return-void
.end method

.method invalidateSpanInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, mSpanOffsets:[I

    const/4 v1, 0x0

    iput v1, p0, mSpanOffsetsSize:I

    iput v1, p0, mSpanLookupSize:I

    iput-object v0, p0, mSpanLookup:[I

    iput-object v0, p0, mFullSpanItems:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, mVisibleAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, mSpanOffsetsSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, mSpanOffsetsSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget v0, p0, mSpanLookupSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, mSpanLookupSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_1
    iget-boolean v0, p0, mReverseLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, mLastLayoutRTL:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, mFullSpanItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
