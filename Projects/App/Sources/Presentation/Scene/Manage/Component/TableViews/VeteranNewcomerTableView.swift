import UIKit
import Then
import SnapKit

class VeteranNewcomerTableView: UIView {
    private let scrollView = UIScrollView().then {
        $0.showsHorizontalScrollIndicator = false
    }
    private let contentView = UIView().then {
        $0.backgroundColor = .white
    }
    let dataTableView = UITableView(frame: .zero, style: .plain).then {
        $0.rowHeight = 56
        $0.separatorStyle = .none
        $0.showsVerticalScrollIndicator = false
        $0.tableFooterView = .init(frame: .init(x: 0, y: 0, width: 0, height: 120))
        $0.sectionHeaderHeight = 56
        $0.sectionHeaderTopPadding = 0
        $0.register(VeteranNewcomerTableViewCell.self, forCellReuseIdentifier: VeteranNewcomerTableViewCell.identifier)
        $0.register(
            VeteranNewcomerHeaderFooterView.self,
            forHeaderFooterViewReuseIdentifier: VeteranNewcomerHeaderFooterView.identifier
        )
    }
    init() {
        super.init(frame: .zero)
        dataTableView.delegate = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        [
            dataTableView
        ].forEach { contentView.addSubview($0) }
        scrollView.contentSize = contentView.frame.size
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide)
            $0.height.equalToSuperview()
            $0.width.equalTo(2550)
        }
        dataTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension VeteranNewcomerTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let header = tableView.dequeueReusableHeaderFooterView(
            withIdentifier: VeteranNewcomerHeaderFooterView.identifier
        ) as? VeteranNewcomerHeaderFooterView else {
            return UIView()
        }
        return header
    }
}
