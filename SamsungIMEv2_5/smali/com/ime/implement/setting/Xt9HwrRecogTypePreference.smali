.class public Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;
.super Landroid/preference/DialogPreference;
.source "Xt9HwrRecogTypePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Xt9HwrRecogTypePreference"


# instance fields
.field private mAdapter:Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;

.field private mClickedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;

    invoke-direct {v0, p1}, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mAdapter:Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I

    return p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    const-string v0, "Xt9HwrRecogTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-object v1, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mAdapter:Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->getCheckedPosition()I

    move-result v0

    const-string v1, "Xt9HwrRecogTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder, checkedItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mAdapter:Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;

    new-instance v2, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;-><init>(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
