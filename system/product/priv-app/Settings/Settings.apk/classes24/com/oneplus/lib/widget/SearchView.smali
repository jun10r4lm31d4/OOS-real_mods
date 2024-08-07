.class public Lcom/oneplus/lib/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;,
        Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;,
        Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;,
        Lcom/oneplus/lib/widget/SearchView$SavedState;,
        Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;,
        Lcom/oneplus/lib/widget/SearchView$OnCloseListener;,
        Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingLeftInActionBar:I

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, mTemp:[I

    new-array v0, v0, [I

    iput-object v0, p0, mTemp2:[I

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$1;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$2;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$3;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mReleaseCursorRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$7;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$7;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$8;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$8;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mTextKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$9;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$9;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$10;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$10;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$11;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$11;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$12;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$12;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, mTextWatcher:Landroid/text/TextWatcher;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_search_view:I

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_src_text:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iput-object v5, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, p0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSearchView(Lcom/oneplus/lib/widget/SearchView;)V

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_edit_frame:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, mSearchEditFrame:Landroid/view/View;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_plate:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, mSearchPlate:Landroid/view/View;

    sget v5, Lcom/oneplus/commonctrl/R$id;->submit_area:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, mSubmitArea:Landroid/view/View;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_button:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mSearchButton:Landroid/widget/ImageView;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_go_btn:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mGoButton:Landroid/widget/ImageView;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_close_btn:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mCloseButton:Landroid/widget/ImageView;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_voice_btn:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mVoiceButton:Landroid/widget/ImageView;

    sget v5, Lcom/oneplus/commonctrl/R$id;->search_mag_icon:I

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mCollapsedIcon:Landroid/widget/ImageView;

    iget-object v5, p0, mSearchPlate:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_queryBackground:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mSubmitArea:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_submitBackground:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mSearchButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mGoButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_goIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mCloseButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_closeIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mVoiceButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_voiceIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, mCollapsedIcon:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchHintIcon:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_suggestionRowLayout:I

    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_search_dropdown_item_icons_2line:I

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, mSuggestionRowLayout:I

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_commitIcon:I

    invoke-virtual {v0, v5, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, mSuggestionCommitIconResId:I

    iget-object v1, p0, mSearchButton:Landroid/widget/ImageView;

    iget-object v5, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, mCloseButton:Landroid/widget/ImageView;

    iget-object v5, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    iget-object v5, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, mVoiceButton:Landroid/widget/ImageView;

    iget-object v5, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    new-instance v5, Lcom/oneplus/lib/widget/SearchView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/SearchView$4;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_iconifiedByDefault:I

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, setIconifiedByDefault(Z)V

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_maxWidth:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v1}, setMaxWidth(I)V

    :cond_0
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, mDefaultQueryHint:Ljava/lang/CharSequence;

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_queryHint:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, mQueryHint:Ljava/lang/CharSequence;

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v0, v5, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {p0, v5}, setImeOptions(I)V

    :cond_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v0, v6, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {p0, v6}, setInputType(I)V

    :cond_2
    const/4 v4, 0x1

    sget v7, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v0, v7, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, setFocusable(Z)V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "web_search"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, mDropDownAnchor:Landroid/view/View;

    iget-object v7, p0, mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    invoke-direct {p0}, addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, addOnLayoutChangeListenerToDropDownAnchorBase()V

    :cond_4
    :goto_0
    iget-boolean v7, p0, mIconifiedByDefault:Z

    invoke-direct {p0, v7}, updateViewsVisibility(Z)V

    invoke-direct {p0}, updateQueryHint()V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 2

    iget-object v0, p0, mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$6;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, mDropDownAnchor:Landroid/view/View;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$5;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, mUserQuery:Ljava/lang/CharSequence;

    const-string v2, "user_query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "android.intent.action.SEARCH"

    move-object v1, v2

    :cond_1
    const-string v2, "suggest_intent_data"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v9, v2

    goto :goto_0

    :cond_3
    move-object v9, v2

    :goto_0
    if-nez v9, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    :goto_1
    const-string v2, "suggest_intent_query"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "suggest_intent_extra_data"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, v1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const/4 v2, -0x1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " returned exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchView"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 12

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "free_form"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    const-string v11, "calling_package"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v4
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, mTemp2:[I

    invoke-virtual {p0, v0}, getLocationInWindow([I)V

    iget-object v0, p0, mTemp:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, mTemp2:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    iget-boolean v0, p0, mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getPaddingLeftInActionBar(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->toolbar_icon_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_left2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_left4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v2, v0

    sub-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    return v4
.end method

.method private getPreferredHeight()I
    .locals 2

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->search_view_preferred_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v2, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    iget-boolean v0, p0, mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p2, p3}, createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, launchIntent(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    iget-object v0, p0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 3

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, setQuery(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private updateCloseButton()V
    .locals 3

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v2, p0, mIconifiedByDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, mExpandedInActionView:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v2, p0, mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private updateQueryHint()V
    .locals 3

    invoke-virtual {p0}, getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/oneplus/lib/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/oneplus/lib/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    iget-boolean v3, p0, mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0}, isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2

    const/16 v0, 0x8

    iget-boolean v1, p0, mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6

    iput-boolean p1, p0, mIconified:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, p0, mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, updateSubmitButton(Z)V

    iget-object v5, p0, mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x8

    :goto_3
    iget-object v5, p0, mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, updateCloseButton()V

    if-nez v3, :cond_4

    move v1, v4

    :cond_4
    invoke-direct {p0, v1}, updateVoiceButton(Z)V

    invoke-direct {p0}, updateSubmitArea()V

    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 3

    const/16 v0, 0x8

    iget-boolean v1, p0, mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 8

    iget-object v0, p0, mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iget-boolean v4, p0, mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->dropdownitem_icon_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->dropdownitem_text_padding_left:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    nop

    iget-object v5, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    goto :goto_1

    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    :goto_1
    iget-object v6, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    iget-object v6, p0, mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    iget-object v7, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, mClearingFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setImeVisibility(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iput-boolean v0, p0, mClearingFocus:Z

    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    sget-object v0, HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, mQueryHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, mDefaultQueryHint:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    iget v0, p0, mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    iget v0, p0, mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    iget-boolean v0, p0, mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    iget-boolean v0, p0, mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    iget-boolean v0, p0, mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    iget-boolean v0, p0, mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v7, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, clearFocus()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, updateViewsVisibility(Z)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v2, p0, mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iput-boolean v0, p0, mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 4

    iget-boolean v0, p0, mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, getPaddingLeftInActionBar(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, setPadding(IIII)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, mExpandedInActionView:Z

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, mCollapsedImeOptions:I

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v1, p0, mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setIconified(Z)V

    return-void
.end method

.method onCloseClicked()V
    .locals 4

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, mIconifiedByDefault:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/lib/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, clearFocus()V

    invoke-direct {p0, v2}, updateViewsVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-virtual {p0, v2}, setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, launchSuggestion(IILjava/lang/String;)Z

    invoke-virtual {p0, v1}, setImeVisibility(Z)V

    invoke-direct {p0}, dismissSuggestions()V

    const/4 v0, 0x1

    return v0
.end method

.method onItemSelected(I)Z
    .locals 1

    iget-object v0, p0, mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, rewriteQueryFromSuggestion(I)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    iget-object v0, p0, mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, v0}, setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, mMaxWidth:I

    if-lez v3, :cond_6

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_2
    iget v3, p0, mMaxWidth:I

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, getPreferredWidth()I

    move-result v3

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_4
    iget v3, p0, mMaxWidth:I

    if-lez v3, :cond_5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, getPreferredWidth()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    :cond_6
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-eq v3, v2, :cond_8

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0}, getPreferredHeight()I

    move-result v4

    goto :goto_2

    :cond_8
    invoke-direct {p0}, getPreferredHeight()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v3, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/SearchView$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, updateViewsVisibility(Z)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, isIconified()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    return-object v1
.end method

.method onSearchClicked()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setImeVisibility(Z)V

    iget-object v0, p0, mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 4

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v2}, setImeVisibility(Z)V

    invoke-direct {p0}, dismissSuggestions()V

    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x42

    if-eq p2, v0, :cond_6

    const/16 v0, 0x54

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x15

    if-eq p2, v0, :cond_4

    const/16 v2, 0x16

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    if-ne p2, v0, :cond_7

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_4
    :goto_0
    if-ne p2, v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    :goto_1
    nop

    iget-object v2, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object v2, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object v1, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    sget-object v1, HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v2, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return v3

    :cond_6
    :goto_2
    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    :cond_7
    return v1
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, mUserQuery:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, updateSubmitButton(Z)V

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, updateVoiceButton(Z)V

    invoke-direct {p0}, updateCloseButton()V

    invoke-direct {p0}, updateSubmitArea()V

    iget-object v2, p0, mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mOldQueryText:Ljava/lang/CharSequence;

    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    invoke-direct {p0}, postUpdateFocusedState()V

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 4

    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, updateViewsVisibility(Z)V

    :cond_2
    return v0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, onCloseClicked()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, onSearchClicked()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    iget-boolean v0, p0, mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, mIconifiedByDefault:Z

    invoke-direct {p0, p1}, updateViewsVisibility(Z)V

    invoke-direct {p0}, updateQueryHint()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method setImeVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    nop

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, mMaxWidth:I

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Lcom/oneplus/lib/widget/SearchView$OnCloseListener;)V
    .locals 0

    iput-object p1, p0, mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;)V
    .locals 0

    iput-object p1, p0, mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;)V
    .locals 0

    iput-object p1, p0, mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object p1, p0, mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, mQueryRefinement:Z

    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v1, v0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2

    iput-object p1, p0, mSearchable:Landroid/app/SearchableInfo;

    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, updateSearchAutoComplete()V

    invoke-direct {p0}, updateQueryHint()V

    :cond_0
    invoke-direct {p0}, hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, mVoiceButtonEnabled:Z

    iget-boolean v0, p0, mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, mSubmitButtonEnabled:Z

    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2

    iput-object p1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method updateFocusedState()V
    .locals 4

    iget-object v0, p0, mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, EMPTY_STATE_SET:[I

    :goto_0
    iget-object v2, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v3, p0, mSubmitArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, invalidate()V

    return-void
.end method
