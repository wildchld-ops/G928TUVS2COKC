.class public Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;
.super Ljava/lang/Object;
.source "DbUpdateXt9Tos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mXt9TosDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static getInstance()Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mInstance:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    invoke-direct {v0}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;-><init>()V

    sput-object v0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mInstance:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mInstance:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    return-object v0
.end method


# virtual methods
.method public dismissXt9TosDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getTosDialog(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;Z)Landroid/app/AlertDialog;
    .locals 8

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->dismissXt9TosDialog()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f030034

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const v5, 0x7f100066

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/HtmlTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/ime/framework/view/HtmlTextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getTosString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ime/framework/view/HtmlTextView;->setHtmlString(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0394

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;

    invoke-direct {v6, p0, p2}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;-><init>(Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;

    invoke-direct {v5, p0, p2}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;-><init>(Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    iget-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;

    return-object v5
.end method
