package com.springlec.springAscent.dto;



public class PDtoPageMaker {
	
	// 시작페이지 
    private int startPage;
    
    // 끝나는 페이지 
    private int endPage;
    
    // 이전, 다음 페이지
    private boolean prev, next;
    
    //총 상품수 (게시물 수 )
    private int total;
    

    private Criteria cri;
    
    public PDtoPageMaker(Criteria cri, int total) {
    	 this.cri = cri;
         this.total = total;
         
         //화면에 보여주는 끝나는 페이지, 1부터 5까지일 때 5에 해당 , 6부터 10까디라면 10에 해당 
         this.endPage = (int)(Math.ceil((double)cri.getPageNum())*5);
         //화면에 보여주는 시작하는 페이지, 1부터 5까지 중 1, 6부터 10까지라면 6에 해당 
         this.startPage = this.endPage - 4;
         //게시물의 가장 마지막 페이지, (총 게시물 / 한 화면당 보여주는 게시물), 총 100개를 20개씩 보여준다면 100/20 =5 ,5가 가장 마지막 페이지 
         int realEnd = (int)(Math.ceil((double)total /cri.getAmount()));
         //  보여주는 마지막페이지가 실제 마지막 페이지일 경우  같음 
         if(realEnd < this.endPage) {
             this.endPage = realEnd;
         }
         //이전 버튼은  시작페이지 1이상 일때  true
         this.prev = this.startPage > 1;
         // 다음 버튼은 화면상 보여지는 마지막 페이지보다 실제 마지막페이지가 남았을 때 true
         this.next = this.endPage < realEnd;
    	
	}

	@Override
	public String toString() {
		return "PDtoPageMaker [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
}
