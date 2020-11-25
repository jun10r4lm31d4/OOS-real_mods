.class public Lcom/android/providers/media/CheckedListItem;
.super Landroid/widget/RelativeLayout;
.source "CheckedListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getCheckedTextView()Landroid/widget/CheckedTextView;
    .locals 1

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckedTextView;

    return-object p0
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    invoke-direct {p0}, getCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-direct {p0}, getCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 0

    invoke-direct {p0}, getCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->toggle()V

    return-void
.end method
