.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic val$ripple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter$1;->this$2:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iput-object p2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter$1;->val$ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter$1;->val$ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v2, 0x0

    return v2
.end method
