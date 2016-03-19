.class public Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;
.super Landroid/app/Activity;
.source "DbDeleteActivity.java"


# static fields
.field private static final DIALOG_DELETE_NOTICE:I = 0x0

.field private static final STATUS_BAR_CANCEL:I = 0x1

.field private static final STATUS_BAR_DELETE:I


# instance fields
.field mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

.field private mCatDBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mDBListView:Landroid/widget/ListView;

.field private mDeleteDBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllCheckBox:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->handleSelectAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->updateDeleteItem(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private handleSelectAll()V
    .locals 4

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-direct {p0, v3, v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->updateDeleteItem(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initLayout()V
    .locals 3

    const v0, 0x7f100035

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDeletableDBList(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03001d

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 4

    const v3, 0x7f0d0384

    const/4 v1, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d036e

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;-><init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$4;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$4;-><init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateDeleteItem(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->initLayout()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x1040000

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0d0384

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->showAlertDialog(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 9

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v6, "DbDeleteActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onResume checked count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deleteDBCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;

    if-ne v5, v4, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
