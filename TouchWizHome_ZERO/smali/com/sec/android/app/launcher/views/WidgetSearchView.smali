.class public Lcom/sec/android/app/launcher/views/WidgetSearchView;
.super Landroid/widget/SearchView;
.source "WidgetSearchView.java"


# instance fields
.field private mClearButton:Landroid/widget/ImageView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGainFocus:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mTextView:Landroid/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;-><init>(Lcom/sec/android/app/launcher/views/WidgetSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;-><init>(Lcom/sec/android/app/launcher/views/WidgetSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;-><init>(Lcom/sec/android/app/launcher/views/WidgetSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;-><init>(Lcom/sec/android/app/launcher/views/WidgetSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$001(Lcom/sec/android/app/launcher/views/WidgetSearchView;Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$201(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$501(Lcom/sec/android/app/launcher/views/WidgetSearchView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$601(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method private initialiseComponents()Z
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/search_src_text"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView$SearchAutoComplete;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClearButton:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/search_close_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClearButton:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public gainFocussed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mGainFocus:Z

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public setEditable(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->initialiseComponents()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mGainFocus:Z

    invoke-super {p0, p1}, Landroid/widget/SearchView;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/widget/SearchView;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mGainFocus:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setKeyPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    return-void
.end method
