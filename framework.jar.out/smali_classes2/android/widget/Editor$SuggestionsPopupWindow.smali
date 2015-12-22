.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 11

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    move-object v0, v8

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v1, p2

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private updateSuggestions()Z
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v28

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    move-object/from16 v0, v28

    array-length v11, v0

    if-nez v11, :cond_0

    const/16 v31, 0x0

    :goto_0
    return v31

    :cond_0
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v21

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/16 v30, 0x0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v11, :cond_7

    aget-object v27, v28, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v31

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_1

    move-object/from16 v9, v27

    :cond_1
    if-nez v18, :cond_2

    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v30

    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v12, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v0, v12, :cond_4

    aget-object v23, v29, v24

    const/16 v26, 0x0

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    move/from16 v0, v19

    if-ne v0, v15, :cond_5

    move/from16 v0, v17

    if-ne v0, v14, :cond_5

    const/16 v26, 0x1

    :cond_3
    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move/from16 v18, v11

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v31

    if-nez v31, :cond_9

    if-eqz v9, :cond_9

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ltz v10, :cond_9

    if-le v8, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const v35, 0x104047c

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v31 .. v34}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x21

    invoke-virtual/range {v31 .. v35}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    const/16 v31, -0x2

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const v35, 0x104047d

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v31 .. v34}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x21

    invoke-virtual/range {v31 .. v35}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    new-instance v32, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v32 .. v32}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    :cond_a
    if-nez v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    const/16 v31, 0x1

    goto/16 :goto_0

    :cond_b
    const v5, 0x3ecccccd    # 0.4f

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->alpha(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3ecccccd    # 0.4f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    const v32, 0xffffff

    and-int v32, v32, v30

    shl-int/lit8 v33, v13, 0x18

    add-int v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_5
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010373

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method protected getTextOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected initContentView()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isShowingUp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    const/high16 v8, -0x80000000

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$3302(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v34, v0

    aget-object v24, v34, p3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    if-ltz v20, :cond_2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v34

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v34

    if-eqz v34, :cond_1

    if-eqz v20, :cond_0

    add-int/lit8 v34, v20, -0x1

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v34

    if-eqz v34, :cond_1

    :cond_0
    add-int/lit8 v19, v19, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    if-ltz v18, :cond_4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    new-instance v7, Landroid/content/Intent;

    const-string v34, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v34, "word"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v34, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v35, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v35 .. v35}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v34

    const/high16 v35, 0x10000000

    or-int v34, v34, v35

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v34

    if-eqz v34, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v35

    # invokes: Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;IIZ)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v34, "Editor"

    const-string v35, "ActivityNotFoundException"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    const-string v34, "Editor"

    const-string v35, "Fail to launch dictionary."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-class v34, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v34

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, v27

    array-length v8, v0

    new-array v0, v8, [I

    move-object/from16 v30, v0

    new-array v0, v8, [I

    move-object/from16 v28, v0

    new-array v0, v8, [I

    move-object/from16 v29, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_9

    aget-object v25, v27, v6

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v34

    aput v34, v30, v6

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v34

    aput v34, v28, v6

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v34

    aput v34, v29, v6

    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v26

    and-int/lit8 v34, v26, 0x2

    if-lez v34, :cond_8

    and-int/lit8 v26, v26, -0x3

    and-int/lit8 v26, v26, -0x2

    invoke-virtual/range {v25 .. v26}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v31, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v17

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v35, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v35 .. v35}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v12, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v34, v0

    aput-object v12, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v34

    sub-int v35, v17, v18

    sub-int v9, v34, v35

    sub-int v34, v17, v18

    sub-int v15, v16, v34

    if-ge v15, v9, :cond_a

    move v9, v15

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_d

    aget v34, v30, v6

    move/from16 v0, v34

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    aget v34, v28, v6

    move/from16 v0, v34

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->length()I

    move-result v10

    aget v34, v28, v6

    add-int v21, v34, v9

    move/from16 v0, v21

    if-le v0, v10, :cond_c

    move v14, v10

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    aget-object v35, v27, v6

    aget v36, v30, v6

    aget v37, v29, v6

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    move/from16 v14, v21

    goto :goto_5

    :cond_d
    add-int v11, v17, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->length()I

    move-result v33

    move/from16 v0, v33

    if-le v11, v0, :cond_e

    move/from16 v13, v33

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13, v13}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_2

    :cond_e
    move v13, v11

    goto :goto_6
.end method

.method public onParentLostFocus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iput-boolean v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mIsSuggestionsPopup:Z
    invoke-static {v0, v2}, Landroid/widget/Editor;->access$2402(Landroid/widget/Editor;Z)Z

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_0
.end method
