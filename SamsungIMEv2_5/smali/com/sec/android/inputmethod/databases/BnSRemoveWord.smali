.class public Lcom/sec/android/inputmethod/databases/BnSRemoveWord;
.super Ljava/lang/Object;
.source "BnSRemoveWord.java"


# instance fields
.field private id:I

.field private locale:Ljava/lang/String;

.field private status:I

.field private time:Ljava/lang/String;

.field private word:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->id:I

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->word:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->status:I

    iput-object p4, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->locale:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->id:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->status:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->word:Ljava/lang/String;

    return-object v0
.end method
